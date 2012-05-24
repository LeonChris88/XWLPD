.class public Lorg/apache/commons/httpclient/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP major version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Version parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v2

    sub-int v0, v1, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    return v0
.end method

.method public greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
