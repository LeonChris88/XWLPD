.class public Lcom/seven/Z7/common/util/MIMETypeMap;
.super Ljava/lang/Object;
.source "MIMETypeMap.java"


# static fields
.field private static mMimeTypesReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MIMETypeMap not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/seven/Z7/common/util/MIMETypeMap;->getReference()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private static getReference()Ljava/util/Properties;
    .locals 10

    const/4 v5, 0x0

    :try_start_0
    sget-object v8, Lcom/seven/Z7/common/util/MIMETypeMap;->mMimeTypesReference:Ljava/lang/ref/SoftReference;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/seven/Z7/common/util/MIMETypeMap;->mMimeTypesReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/Properties;

    move-object v5, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    :cond_0
    move-object v6, v5

    const/4 v3, 0x0

    :try_start_1
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getRawMimeTypesId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v8, "MIMETypeMap"

    const-string v9, "Mime type resource not found"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v5

    :cond_2
    const/4 v7, 0x0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v8, Lcom/seven/Z7/common/util/MIMETypeMap;->mMimeTypesReference:Ljava/lang/ref/SoftReference;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    const-string v8, "MIMETypeMap"

    const-string v9, "Failed to read mime type resource"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v6

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v5, v6

    goto :goto_1
.end method
