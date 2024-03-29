.class public Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
.super Ljava/lang/Object;
.source "BaseSncStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/BaseSncStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSncStoreInfo"
.end annotation


# instance fields
.field public mAccountInstanceLimit:I

.field public mClassName:Ljava/lang/String;

.field public mPushSupported:Z

.field public mScheme:Ljava/lang/String;

.field public mVisibleLimitDefault:I

.field public mVisibleLimitIncrement:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mPushSupported:Z

    return-void
.end method

.method public static getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const-string v5, "store"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const-string v6, "scheme"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    invoke-direct {v0}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;-><init>()V

    iput-object v3, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mScheme:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "class"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mClassName:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "push"

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mPushSupported:Z

    const/4 v5, 0x0

    const-string v6, "visibleLimitDefault"

    const/16 v7, 0x19

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitDefault:I

    const/4 v5, 0x0

    const-string v6, "visibleLimitIncrement"

    const/16 v7, 0x19

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mVisibleLimitIncrement:I

    const/4 v5, 0x0

    const-string v6, "accountInstanceLimit"

    const/4 v7, -0x1

    invoke-interface {v1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->mAccountInstanceLimit:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    :cond_1
    :goto_1
    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;
    .locals 2

    const v1, 0x7f060013

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const v1, 0x7f060012

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/BaseSncStore$BaseSncStoreInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method
