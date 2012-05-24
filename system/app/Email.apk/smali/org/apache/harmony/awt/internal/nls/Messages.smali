.class public Lorg/apache/harmony/awt/internal/nls/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field private static bundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "org.apache.harmony.awt.internal.nls.messages"

    invoke-static {v1, v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x14

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v5, p1

    if-lt v3, v5, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_1
    if-gez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    aget-object v5, p1, v3

    if-nez v5, :cond_2

    const-string v5, "<null>"

    aput-object v5, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    :goto_3
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    if-le v3, v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v2, v5

    if-ltz v2, :cond_7

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_8

    :cond_7
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    if-lt v2, v5, :cond_9

    const-string v5, "<missing argument>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v3, 0x3

    goto :goto_3

    :cond_9
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    sget-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/harmony/awt/internal/nls/Messages$1;

    invoke-direct {v1, p1, p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages$1;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
