.class public Lorg/apache/james/mime4j/field/ContentTypeField;
.super Lorg/apache/james/mime4j/field/Field;
.source "ContentTypeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
    }
.end annotation


# instance fields
.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    iput-object p6, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    return-void
.end method

.method public static getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "us-ascii"

    goto :goto_0
.end method

.method public static getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "message/rfc822"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "text/plain"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
