.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
