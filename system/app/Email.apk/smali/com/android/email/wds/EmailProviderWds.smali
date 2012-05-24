.class public Lcom/android/email/wds/EmailProviderWds;
.super Ljava/lang/Object;
.source "EmailProviderWds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/wds/EmailProviderWds$1;,
        Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
    }
.end annotation


# instance fields
.field public authNameFormat:Ljava/lang/String;

.field public autoCorrectedDomain:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/wds/ServicemineEmailSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "Unlabeled"

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->label:Ljava/lang/String;

    const-string v4, "$user"

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/wds/ServicemineEmailSetting;

    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_0

    if-nez v3, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    if-ne v4, v5, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    new-instance v4, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;

    const-string v5, "No incoming connection provided"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;-><init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;Lcom/android/email/wds/EmailProviderWds$1;)V

    throw v4

    :cond_5
    if-nez v3, :cond_6

    new-instance v4, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;

    const-string v5, "No outgoing connection provided"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;-><init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;Lcom/android/email/wds/EmailProviderWds$1;)V

    throw v4

    :cond_6
    invoke-virtual {v2}, Lcom/android/email/wds/ServicemineEmailSetting;->getUriTemplate()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/email/wds/ServicemineEmailSetting;->getUriTemplate()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/lang/String;

    const-string v4, "email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incomingUriTemplate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outgoingUriTemplate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
