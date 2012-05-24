.class Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;
.super Ljava/lang/Object;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderEnumeration"
.end annotation


# instance fields
.field private matching:Z

.field private names:[Ljava/lang/String;

.field private nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private source:Ljava/util/Iterator;

.field private stringForm:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;[Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->stringForm:Z

    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    return-void
.end method

.method private getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->nameEquals(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->stringForm:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
