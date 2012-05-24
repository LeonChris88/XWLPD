.class public final Ljavax/mail/search/HeaderTerm;
.super Ljavax/mail/search/StringTerm;
.source "HeaderTerm.java"


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v1, :cond_0

    check-cast p1, Ljavax/mail/search/HeaderTerm;

    iget-object v1, p1, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/StringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
