use strict;
use warnings;
use Test::More qw( no_plan );

# synchronizes the {error,standard} output of this test.
use IO::Handle;
STDOUT->autoflush(1);
STDERR->autoflush(1);

our $class;
BEGIN { $class = 'Net::Whois::Object'; use_ok $class; }

my @lines = <DATA>;
my @o     = Net::Whois::Object->new(@lines);
for our $object (@o) {
    isa_ok $object, $class;
}


__DATA__
   Server Name: NS.BEST.COM
   IP Address: 8.8.8.8
   Registrar: GoDaddy.com, LLC
   Registrar WHOIS Server: whois.godaddy.com
   Registrar URL: http://www.godaddy.com

   Server Name: NS1.BEST.COM
   IP Address: 8.8.8.8
   Registrar: GoDaddy.com, LLC
   Registrar WHOIS Server: whois.godaddy.com
   Registrar URL: http://www.godaddy.com

   Server Name: NS2.BEST.COM
   IP Address: 8.8.8.8
   Registrar: GoDaddy.com, LLC
   Registrar WHOIS Server: whois.godaddy.com
   Registrar URL: http://www.godaddy.com

   Server Name: NS3.BEST.COM
   IP Address: 8.8.8.8
   Registrar: GoDaddy.com, LLC
   Registrar WHOIS Server: whois.godaddy.com
   Registrar URL: http://www.godaddy.com

>>> Last update of whois database: 2020-06-16T15:00:48Z <<<

For more information on Whois status codes, please visit https://icann.org/epp

NOTICE: The expiration date displayed in this record is the date the
registrar's sponsorship of the domain name registration in the registry is
currently set to expire. This date does not necessarily reflect the expiration
date of the domain name registrant's agreement with the sponsoring
registrar.  Users may consult the sponsoring registrar's Whois database to
view the registrar's reported date of expiration for this registration.

TERMS OF USE: You are not authorized to access or query our Whois
database through the use of electronic processes that are high-volume and
automated except as reasonably necessary to register domain names or
modify existing registrations; the Data in VeriSign Global Registry
Services' ("VeriSign") Whois database is provided by VeriSign for
information purposes only, and to assist persons in obtaining information
about or related to a domain name registration record. VeriSign does not
guarantee its accuracy. By submitting a Whois query, you agree to abide
by the following terms of use: You agree that you may use this Data only
for lawful purposes and that under no circumstances will you use this Data
to: (1) allow, enable, or otherwise support the transmission of mass
unsolicited, commercial advertising or solicitations via e-mail, telephone,
or facsimile; or (2) enable high volume, automated, electronic processes
that apply to VeriSign (or its computer systems). The compilation,
repackaging, dissemination or other use of this Data is expressly
prohibited without the prior written consent of VeriSign. You agree not to
use electronic processes that are automated and high-volume to access or
query the Whois database except as reasonably necessary to register
domain names or modify existing registrations. VeriSign reserves the right
to restrict your access to the Whois database in its sole discretion to ensure
operational stability.  VeriSign may restrict or terminate your access to the
Whois database for failure to abide by these terms of use. VeriSign
reserves the right to modify these terms at any time.

The Registry database contains ONLY .COM, .NET, .EDU domains and
Registrars.
