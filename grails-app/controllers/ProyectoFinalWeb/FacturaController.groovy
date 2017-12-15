package ProyectoFinalWeb

import grails.converters.JSON
import pl.touk.excel.export.WebXlsxExporter

class FacturaController {

    def index() { }


    def ver_despachar(){

    }

    def graficos(){

        def facturas = Factura.findAll()

        def despachadas = Factura.findAllByDespachada(true)
        def noDespachadas =  Factura.findAllByDespachada(false)


        println "despachadas: " + despachadas.size() + ". No despachadas: " + noDespachadas.size()
        def mapa = ["despachadas": despachadas.size(), "noDespachadas": noDespachadas.size(), "comprasRealizadas": facturas.size() ]

        def datos = ["datos" : mapa]
        respond datos

    }
    def service(){
        render Factura.list() as JSON
    }


    def generar_excel() {

        List<Factura> Facturas = Factura.findAll();
        def rows = []

        Facturas.each {
            def id = it.id
            def compradorNombre = it.cliente.toString()
            def fecha = it.fecha
            def total = it.total()



            it.productos.each{ io->
                def valx = new HashMap()
                valx['OrdenNo'] = id
                valx['NombreUsuario'] = compradorNombre
                valx['fecha'] = fecha
                valx['Ordentotal'] = total
                rows.add(valx)

            }
        }
        def withProperties = ['OrdenNo', 'NombreUsuario','Ordentotal', 'fecha']
        def headers = ['Id', 'Correo Comprador','Total Compra', 'Fecha']
        new WebXlsxExporter().with {
            setResponseHeaders(response)
            fillHeader(headers)
            add(rows, withProperties)
            save(response.outputStream)
        }

    }

    def despachar(){

        def factura = Factura.findById(params.factura)
        factura.despachada = true;
        factura.save()

        redirect action: "ver_despachar"
    }
}
