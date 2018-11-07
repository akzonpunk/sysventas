<%-- 
    Document   : formTipDoc
    Created on : 07/11/2018, 10:33:17 AM
    Author     : Student
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<script src='/webjars/AdminLTE/2.4.2/bower_components/jquery/dist/jquery.min.js'></script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">    
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de tipo de documento de identidad</h3>
            </div>
            <c:url var="urlsave" value="${pageContext.request.contextPath}/${urlAccion}" />
            <frm:form modelAttribute="modeltdi" method="POST" action="${urlsave}" class="form-horizontal" >

                <div class="box-body">
                    <div class="form-group">
                        <frm:hidden path="idTipodocidentidad" />
                        
                        <frm:label path="codigo" class="col-sm-2 control-label" >Codigo:</frm:label>
                            <div class="col-sm-10">
                            <frm:input path="codigo" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">                    
                        <frm:label path="descripcion" class="col-sm-2 control-label" >Descripcion:</frm:label>
                            <div class="col-sm-10">
                            <frm:input path="descripcion" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">                    
                        <frm:label path="estado" class="col-sm-2 control-label" >Estado:</frm:label>
                            <div class="col-sm-10">
                            <frm:input path="estado" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <frm:label path="idTipodocidentidad.idTipodocidentidad" class="col-sm-2 control-label">Tipo documento de identidad </frm:label>
                            <div class="col-sm-10">
                            <frm:select path="idTipodocidentidad.idTipodocidentidad" class="form-control select2" style="width: 100%;">
                                <frm:options items="${ListaDocumento}" itemLabel="codigo" itemValue="idTipodocidentidad" />
                            </frm:select></div>
                    </div>
                    


                </div>
                <!-- /.box-body -->

               
                    <div class="box-footer" style="margin-left: 80px">                
                        <input type="submit" value="Guardar" class="btn btn-primary" />
                
                    &nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/tdiMain" class="btn btn-primary">Cancelar</a> 
                </div>            
            </frm:form>
        </div>

    </section> 
    <script type="text/javascript">
        $(function () {
            //$('#datetimepicker1').datetimepicker();
            $('#datepicker').datepicker({
                //format: 'dd-MMM-yyyy'
                format: 'yyyy/mm/dd'
            });

            var dato = $('#datepicker').val();
            var dato2 = dato.replace('-', '/')

            $('#datepicker').val(dato2.replace('-', '/'));
            //alert(dato2.replace('-','/'));
        });
    </script>     
</div> 
