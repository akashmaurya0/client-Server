package lab.simulations;

import inet.networklayer.configurator.contract.IIpv4NodeConfigurator;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
@license(LGPL);
//
// TODO documentation
//
network lab
{
    @display("bgb=687,337");
    submodules:
        server: StandardHost {
            @display("p=60,160;b=52,80");
        }
        client: StandardHost {
            @display("p=513,158;b=125,84");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=276,43");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
        server.ethg++ <--> Eth100M <--> client.ethg++;
        server.ethg++ <--> Eth100M <--> client.ethg++;
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

import inet.node.inet.StandardHost;


