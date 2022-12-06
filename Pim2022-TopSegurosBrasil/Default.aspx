<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pim2022_TopSegurosBrasil._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bg-content-principal row">
        <div class="bg-right-content-principal col-sm-6">
            <div class="row">
                <div class="col-sm-4">
                    <h3 class="txt-principal">Simule o seguro do seu veículo!</h3>

                    <div class="d-flex flex-column align-items-center div-price-principal">
                        <div class="p-1">
                            <h4 class="price-txt-principal">Planos a partir</h4>
                        </div>
                        <div class="p-1">
                            <h2 class="price-txt-principal">R$ 90,00</h2>
                        </div>
                    </div>

                </div>
                <div class="col-sm-8">
                    <img class="img-show-car-logo" src="resources/show-car-logo.png" />
                </div>
            </div>
        </div>
        <div class="col-sm-1">
        </div>
        <div class="bg-right-content-contato col-sm-5">
            <div class="d-flex justify-content-center">
                <h3 class="titulo-contato">Entre em contato e simule</h3>
            </div>
            <div>
                <form>
                    <div class="form-group">
                        <div class="row div-contato">
                            <div class="col-sm-2 contato-span d-flex align-items-center justify-content-center">
                                <span class="contato-span-txt">Nome</span>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNome" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row div-contato">
                            <div class="col-sm-2 contato-span d-flex align-items-center justify-content-center">
                                <span class="contato-span-txt">Sobrenome</span>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox  id="txtsobrenome" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row div-contato">
                            <div class="col-sm-2 contato-span d-flex align-items-center justify-content-center">
                                <span class="contato-span-txt">Telefone</span>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox id="txttelefone" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row div-contato">
                            <div class="col-sm-2 contato-span d-flex align-items-center justify-content-center">
                                <span class="contato-span-txt">Email</span>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox  class="form-control" id="txtemail" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex align-items-center justify-content-center btn-contato">
                            <asp:Button id="btnEnviar" runat="server" class="btn btn-info" Text="Enviar" OnClick="btnEnviar_Click"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="vantagens">
    </div>
    <div class="bg-content-vantagens">
        <div class="d-flex justify-content-center">
            <h2 style="font-weight:bold">Vantagens</h2>
        </div>
        <div class="row">
            <div class="col-sm-4 d-flex flex-column">
                <div class="p-2 d-flex justify-content-center">
                    <img class="img-vantagens" style="width: 11.5rem" src="resources/guincho.png"></img>
                </div>
                <div class="p-2 d-flex justify-content-center">
                    <span>Assistência com Guincho, Chaveiro e Troca de Pneu</span>
                </div>
            </div>

            <div class="col-sm-4 d-flex flex-column justify-content-center">
                <div class="p-2 d-flex justify-content-center">
                    <img class="img-vantagens" src="resources/ferramenta.png"></img>
                </div>
                <div class="p-2 d-flex justify-content-center">
                    <span>Assistência Vidros, SuperMartelinho e Reparos Rápidos</span>
                </div>
            </div>

            <div class="col-sm-4 d-flex flex-column justify-content-center">
                <div class="p-2 d-flex justify-content-center">
                    <img class="img-vantagens p-2" src="resources/celular.png"></img>
                </div>
                <div class="p-2 d-flex justify-content-center">
                    <span class="p-2">Aplicativo Exclusivo</span>
                </div>
            </div>
        </div>
    </div>
    <div id="planos" class="bg-content-planos">
        <div class="div-titulo-planos d-flex justify-content-center">
            <h2 style="font-weight:bold">Planos</h2>
        </div>
        <div class="d-flex justify-content-around">
            <div class="col-sm-5 d-flex align-self-stretch">
                <div class="div-plano">
                    <div class="d-flex justify-content-center">
                        <h4>Gold</h4>
                    </div>
                    <hr />
                    <div class="d-flex flex-column">
                        <div class="p-2">
                            - Cobertura de até 10 mil reais para acidentes com terceiros
                        </div>
                        <div class="p-2">
                            - Reparo ou indenização em caso de alagamento ou incêndio
                        </div>
                        <div class="p-2">
                            - Suporte de 24h, para serviços sem ter custo adicional
                        </div>
                        <div class="p-2">
                            - Parcelamento da franquia em até 10x sem juros
                        </div>
                        <div class="p-2">
                            - Crédito para usar aplicativo de trasnporte no caso de reparo ou indenização
                        </div>
                        <div class="p-2">
                            - Sem cobrança de taza de adesão, nem de franquia para terceiros.
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-5">
                <div class="div-plano">
                    <div class="d-flex justify-content-center">
                        <h4>Platinum</h4>
                    </div>
                    <hr />
                    <div class="d-flex flex-column">
                        <div class="p-2">
                            - Acessórios do carro (Som, DVD, Rodas)
                        </div>
                        <div class="p-2">
                            - Cobertura para vidros, faróis e retrovisores
                        </div>
                        <div class="p-2">
                            - Cobertura de até 10 mil reais para acidentes com terceiros
                        </div>
                        <div class="p-2">
                            - Reparo ou indenização em caso de alagamento ou incêndio
                        </div>
                        <div class="p-2">
                            - Suporte de 24h, para serviço sem ter custo adicional
                        </div>
                        <div class="p-2">
                            - Parcelamento da franquia em até 10x sem juros
                        </div>
                        <div class="p-2">
                            - Crédito para usar aplicativo de transporte no caso de reparo ou indenização
                        </div>
                        <div class="p-2">
                            - Sem combrança de taxa de adesão, nem de franquia para terceiros.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
