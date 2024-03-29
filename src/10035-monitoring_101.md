# Monitoring, Notifications, and Metrics 101

## History: How we used to monitor, and how we got better (monitors as tests)

## Perspective (end-to-end) vs Introspective monitoring

## Metrics: what to collect, what to do with them

## Common tools

### Syslog (basics\!)

### Syslog-ng

### Nagios

Nagios is a monitoring tool created by Ethan Galstad. It was originally
released as a opensource project named NetSaint in 1999. Due to
trademark issues it was later renamed Nagios. Since then it has become
one of if not the most common monitoring tool for production
environments.

Nagios is primarily an alerting tool that will notify an administrator
or group of administrators if a service enters a critical or warning
state if desired. It has a basic web interface that allows for
acknowledgment of issues and scheduling downtime.

Nagios is highly configurable and extensible due to its reliance on
external commands to perform almost every task. For example, every
availability test in Nagios is a standard executable, and notifications
are generated by an external command. Because of this Nagios does not
restrict the administrator to using a particular language to extend the
system, and often times plug-ins and tests are written in a variety of
languages.

The feature set of Nagios is pretty extensive. It supports service and
host altering hierarchies via parenting, so you can reduce the number of
alerts when a critical service or host fails. It supports active and
passive checks. It has basic scheduling for on-call periods, and
supports time periods in which you can disable alerting.

Since Nagios is so configurable, it can often be difficult to configure
for the uninitiated. It can use many files for configuration, and a
single syntax error will prevent the system from starting. Additionally,
the open-source version does not natively support adding and removing
hosts dynamically; the configuration needs to be modified, and the
server reloaded to add or remove a host.

### Graphite

[Graphite](http://graphite.wikidot.com/) is an open-source monitoring
tool that let's you store time-series based data and graph them.

Graphite consists of three components:

  - Carbon: A daemon which listens for time-series data.
  - Whisper: Similar to RRD, it's a time series database.
  - Webapp: A Django based webapp which helps visualize beautiful graphs
    on the data collected.

Graphite does not collect metrics for you, however there are three
methods using which you can send data to Graphite:

  - PlainText
  - Pickle
  - AMQP

Apart from the out-of-box web-app that Graphite comes with you can even
create your own applications on top of Graphite by retrieving data in
form of JSON, CSV or raw-data format.

### Ganglia

[Ganglia](http://ganglia.info) is a highly scalable distributed
monitoring solution for high performance systems like clusters and
grids.

Ganglia leverages the following technologies:

  - XML for data representation.
  - XDR for compact and portable data transport.
  - RRD for data-storage.
  - PHP and RRDTool for data visualization.

Ganglia is organized using the following conventions:

  - Grid: Consists of clusters.
  - Clusters: Consists of hosts/nodes. This is a logical grouping of
    machines and metrics like database servers, qa servers, etc.
  - Host/Node: Typically a machine/server.

Ganglia monitoring suite consists of three main components:

  - gmond: Daemon which needs to sit on every single node which needs to
    be monitored, gather monitoring statistics, send as well as receive
    the stats to and from within the same multicast or unicast channel.
  - gmetad: daemon that polls gmonds periodically and stores their
    metrics into a storage engine like RRD. It can poll multiple
    clusters and aggregate the metrics. It is also used by the web
    frontend in generating the UI.
  - ganglia-web: It should sit on the same machine as gmetad as it needs
    access to the RRD files.

To get a feeling of what features Ganglia has, you can look at the demo
at <http://ganglia.wikimedia.org/latest/>

### Munin

### RRDTool / cacti

### Icinga

### SNMP

Simple Network Management Protocol or SNMP, is a monitoring and
management protocol. It is the standard way of monitoring on switches,
routers, and other networking equipment. SNMP relies on an agents which
when contacted by a management system return the information requested.
The data provided by the agent uses Object Identifiers or OIDs that
provide information about the current system. OIDs can contain anything
from strings identifying information about the system, to total number
of frames received by the Ethernet controller. Devices and systems often
are provided with MIBs or Management Information Base these help the
management system identify the information contained in the OID. Lastly,
management systems request information by providing a community string,
for example Public. These community strings allow the agent to determine
what information is appropriate to return to the requester, and whether
the requesting system has read-only or read-write access.

There are three commonly used versions of the protocol, SNMPv1, SNMPv2c
and SNMPv3. SNMPv3 is the only cryptographically secure version of the
protocol. Most devices will have support at least two versions of SNMP.

### Collectd

[Collectd](https://collectd.org) collects system-level metrics on each
machine. It works by loading a list of plugins, and polls data from
various sources. The data are sent to different backend (Graphite,
Riemann) and can be used to trigger alerts with Nagios.

### Sensu

[Sensu](https://github.com/sensu) was written as a highly configurable,
Nagios replacement. Sensu can be described as a "monitoring router",
since it connects check scripts across any number of systems with
handler scripts run on one or more Sensu servers. It is compatible with
existing Nagios checks and additional checks can be written in any
language similar to writing Nagios checks. Check scripts can send alert
data to one or more handlers for flexible notifications. Sensu provides
the server, client, API and dashboard needed to build a complete
monitoring system.

### Diamond

[Diamond](https://github.com/BrightcoveOS/Diamond) is a Python daemon
that collects system metrics and publishes them to Graphite (and
others). It is capable of collecting cpu, memory, network, i/o, load and
disk metrics. Additionally, it features an API for implementing custom
collectors for gathering metrics from almost any source.

### Logster

[Logster](https://github.com/etsy/logster/) project was created at Etsy
as a fork of
[ganglia-logtailer](https://bitbucket.org/maplebed/ganglia-logtailer) .

Logster is a utility for reading log files and generating metrics in:

  - Graphite
  - Ganglia
  - Amazon CloudWatch

It is ideal for visualizing trends of events that are occurring in any
type of logs:

  - Application
  - System
  - Error logs

For example, you might use Logster to graph the number of occurrences of
HTTP response code that appears in your web server logs.

Logster maintains a cursor, via logtail on each log file that it reads
so that each successive execution only inspects new log entries.

A simple,1 minute crontab entry for logster would allow you to generate
near real-time trends for anything you want to measure from your logs.

This tool is made up of a framework script, Logster, and parsing scripts
that are written to accommodate your specific log format.

Sample parsers are included in the distribution, which essentially read
a log file line by line, applying a regular expression to extract useful
data from the lines you are interested in, and then aggregate that data
into metrics that will be submitted to Ganglia or Graphite or Amazon
CloudWatch.

Do take a look through the [sample
parsers](https://github.com/etsy/logster/tree/master/logster/parsers),
which should give you some idea of how to get started writing your own.
