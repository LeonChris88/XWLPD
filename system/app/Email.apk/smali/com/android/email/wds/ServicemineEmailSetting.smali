.class Lcom/android/email/wds/ServicemineEmailSetting;
.super Ljava/lang/Object;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/wds/ServicemineEmailSetting$1;,
        Lcom/android/email/wds/ServicemineEmailSetting$Protocol;,
        Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;
    }
.end annotation


# static fields
.field public static EAS:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

.field public static IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

.field public static NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

.field public static POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

.field public static SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

.field public static SSL:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

.field public static TLS:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

.field public static protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/wds/ServicemineEmailSetting$Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static securityTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;

.field public port:I

.field public protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

.field public securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

.field public server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    const-string v1, "starttls"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->TLS:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    const-string v1, "ssl/tls"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->SSL:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityTypes:Ljava/util/Map;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    const-string v1, "imap4"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    const-string v1, "pop3"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    const-string v1, "smtp"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    new-instance v0, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    const-string v1, "eas"

    invoke-direct {v0, v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;-><init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->EAS:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityTypes:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->TLS:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->TLS:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityTypes:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->SSL:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->SSL:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityTypes:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    sget-object v1, Lcom/android/email/wds/ServicemineEmailSetting;->EAS:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v1}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->EAS:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/email/wds/ServicemineEmailSetting;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/email/wds/ServicemineEmailSetting;

    iget-object v2, p0, Lcom/android/email/wds/ServicemineEmailSetting;->server:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/email/wds/ServicemineEmailSetting;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/email/wds/ServicemineEmailSetting;->port:I

    iget v3, v0, Lcom/android/email/wds/ServicemineEmailSetting;->port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    iget-object v3, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iget-object v3, v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUriTemplate()Ljava/net/URI;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    iget-object v3, p0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "imap"

    :goto_0
    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iget-object v3, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    :cond_0
    :goto_1
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/wds/ServicemineEmailSetting;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/wds/ServicemineEmailSetting;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    invoke-virtual {v2}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->SSL:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iget-object v3, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "+ssl+"

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/email/wds/ServicemineEmailSetting;->TLS:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iget-object v3, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "+tls+"

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    iput-object v0, p0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    iget-object v0, p0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setSecurityType(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/wds/ServicemineEmailSetting;->securityTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iput-object v0, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    iget-object v0, p0, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
