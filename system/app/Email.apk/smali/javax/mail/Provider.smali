.class public Ljavax/mail/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Provider$Type;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private type:Ljavax/mail/Provider$Type;

.field private vendor:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    iput-object p2, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    iput-object p3, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    iput-object p4, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    iput-object p5, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljavax/mail/Provider$Type;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "javax.mail.Provider["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    sget-object v2, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-ne v1, v2, :cond_3

    const-string v1, "STORE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    sget-object v2, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-ne v1, v2, :cond_0

    const-string v1, "TRANSPORT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
