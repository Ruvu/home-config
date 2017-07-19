#!/usr/bin/perl

# Host name
$hostname = `hostname`;
chomp $hostname;

# OS version
$ver = `lsb_release -d | cut -f2-`;
chomp $ver;

# Architecture (i386, x86_64, etc.)
$arch = `uname -i`;
chomp $arch;

# Uptime
$uptime = `uptime`;
chomp $uptime;

# CPUs
$lscpu = `lscpu`;
if($lscpu =~ /^CPU\(s\):\s+(\d+)\s*$/m)
{
    $cpus = $1;
}
else
{
    $cpus = "?";
}

# Memory
$mem = `free -m`;
if($mem =~ /^Mem:\s+(\d+)\s+\d+\s+\d+\s+\d+\s+\d+\s+(\d+)\s*$/m)
{
    $mem_total = $1;
    $mem_available = $2;

    $percentUsed = sprintf("%.0f", ($mem_total - $mem_available) / $mem_total * 100);
    if($mem_total > 1024)
    {
        $mem_total = sprintf("%.0fG", $mem_total/1024);
    }
    else
    {
        $mem_total .= "M";      
    }
    $mem = "$mem_total ($percentUsed\%)";
}
else
{
    $mem = "? (?)";
}

$load = `uptime`;
chomp $load;
if($load =~ /load average:\s+([0-9]*\.?[0-9]+),/)
{
    if($cpus ne "?")
    {
        $load = sprintf("%.0f\%", $1/$cpus * 100);
    }
    else
    {
        $load = sprintf("%.0f\%", $1 * 100);
    }
}
else
{
    $load = "?";
}
$cpus .= " ($load)";

print "$hostname\n";
print "$ver $arch\n";
print "$uptime\n";
print "CPUs: $cpus\n";
print "Memory: $mem\n";
print "\n";

