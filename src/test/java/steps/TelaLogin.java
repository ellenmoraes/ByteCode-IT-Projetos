package steps;

import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.concurrent.TimeUnit;

public class TelaLogin {
    WebDriver robozinho;
    @Before
    public void inicio() {
        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
        robozinho = new ChromeDriver();
        robozinho.manage().window().maximize();
        robozinho.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS); }
    @Dado("que o usuario esta na tela de login")
    public void que_o_usuario_esta_na_tela_de_login() {
        robozinho.get("https://www.saucedemo.com/");
    }
    @Quando("preenche o campo Username com {string} e o campo Password com {string}")
    public void preenche_o_campo_username_com_e_o_campo_password_com(String nome, String senha) {
        robozinho.findElement(By.id("user-name")).sendKeys(nome);
        robozinho.findElement(By.id("password")).sendKeys(senha);
    }
    @Quando("clica no botão de Login")
    public void clica_no_botão_de_login() {
        robozinho.findElement(By.id("login-button")).click();
    }
    @Então("deve ter acesso a Pagina {string}")
    public void deve_ter_acesso_a_pagina(String titulo) {
        System.out.println(robozinho.findElement(By.className("title")).getText());
    }
    @Então("deve receber a {string}")
    public void deve_receber_a(String mensagem) {
        Assert.assertEquals(mensagem, robozinho.findElement(By.tagName("h3")).getText());
        System.out.println(mensagem);
    }
}