{**********************************************************************************}
{ VESTIS PCP  - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                             } 
{                                                                                  } 
{ Este arquivo é parte do codigo-fonte do sistema VESTIS PCP, é um software livre; }
{ você pode redistribuí-lo e/ou modificá-lo dentro dos termos da GNU LGPL versão 3 }
{ como publicada pela Fundação do Software Livre (FSF).                            }
{                                                                                  }
{ Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA     }
{ GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou          }
{ APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU/LGPL em português      }
{ para maiores detalhes.                                                           }
{                                                                                  }
{ Você deve ter recebido uma cópia da GNU LGPL versão 3, sob o título              }
{ "LICENCA.txt", junto com esse programa.                                          }
{ Se não, acesse <http://www.gnu.org/licenses/>                                    }
{ ou escreva para a Fundação do Software Livre (FSF) Inc.,                         }
{ 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.                         }
{                                                                                  }
{                                                                                  }
{ Autor: Adriano Zanini -  zanini@r7.com                                           }
{                                                                                  }
{**********************************************************************************}


{***********************************************************************************
**  SISTEMA...............: VESTIS PCP                                            **
**  DESCRIÇÃO.............: SISTEMA ERP PARA INDUSTRIAS DE CONFECÇÕES             **
**  LINGUAGEM.............: DELPHI XE7                                            ** 
**  BANCO DE DADOS........: SQL SERVER 2014                                       ** 
**                                                                                **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  ANALISTA/PROGRAMADOR..: ADRIANO ZANINI                                        **
**  AUTORIA...............: ADRIANO ZANINI                                        **
**  E-MAIL................: zanini@r7.com                                         **
**  ANO...................: 2012 - 2015                                           **
**                                                                                **
** -----------------------------------------------------------------------------  **
**                                                                                **
**  OBSERVAÇÃO............: CÓDIGO-FONTE LIVRE. E NÃO PODE SER COMERCIALIZADO.    **
**                          QUALQUER PESSOA FISICA OU JURIDICA (EMPRESA) PODE     **
**                          COPIAR E UTILIZAR SEM FINS COMERCIAIS.                **
**                                                                                **
***********************************************************************************}

unit FTabelaPrecoOpcao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls;

type
   TFrmTabelaPrecoOpcao = class(TForm)
      BtnReal: TButton;
      BtnDolares: TButton;
      BtnEuros: TButton;
      BtnCancelar: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnRealClick(Sender: TObject);
      procedure BtnDolaresClick(Sender: TObject);
      procedure BtnEurosClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTabelaPrecoOpcao: TFrmTabelaPrecoOpcao;

implementation

uses Global, FTabelaPreco;

{$R *.dfm}

procedure TFrmTabelaPrecoOpcao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnCancelar.Click;
      close;
   end;

end;

procedure TFrmTabelaPrecoOpcao.BtnRealClick(Sender: TObject);
begin
   OpcaoTabela := 'R';
   close;
end;

procedure TFrmTabelaPrecoOpcao.BtnDolaresClick(Sender: TObject);
begin
   OpcaoTabela := 'D';
   close;

end;

procedure TFrmTabelaPrecoOpcao.BtnEurosClick(Sender: TObject);
begin
   OpcaoTabela := 'E';
   close;

end;

procedure TFrmTabelaPrecoOpcao.FormCreate(Sender: TObject);
begin
   OpcaoTabela := '';
end;

procedure TFrmTabelaPrecoOpcao.BtnCancelarClick(Sender: TObject);
begin
   OpcaoTabela := '';
   close;
end;

end.
