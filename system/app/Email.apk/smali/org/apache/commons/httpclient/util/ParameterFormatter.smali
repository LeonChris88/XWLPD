.class public Lorg/apache/commons/httpclient/util/ParameterFormatter;
.super Ljava/lang/Object;
.source "ParameterFormatter.java"


# static fields
.field private static final SEPARATORS:[C

.field private static final UNSAFE_CHARS:[C


# instance fields
.field private alwaysUseQuotes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x28t 0x0t
        0x29t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x2ct 0x0t
        0x3bt 0x0t
        0x3at 0x0t
        0x5ct 0x0t
        0x22t 0x0t
        0x2ft 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x3ft 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x20t 0x0t
        0x9t 0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x2
        0x22t 0x0t
        0x5ct 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    return-void
.end method

.method public static formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 7

    const/16 v6, 0x5c

    const/16 v5, 0x22

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "String buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Value buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_4

    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static isOneOf([CC)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isSeparator(C)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method

.method private static isUnsafeChar(C)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String buffer may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public setAlwaysUseQuotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    return-void
.end method
