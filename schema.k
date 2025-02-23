import microserviceb.schemas as microserviceb
import microservicea.schema as microservicea

schema Offering:
    msa: microservicea.MicroserviceA
    msb: microserviceb.MicroserviceB