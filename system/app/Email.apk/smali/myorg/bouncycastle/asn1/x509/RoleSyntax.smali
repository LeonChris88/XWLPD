.class public Lmyorg/bouncycastle/asn1/x509/RoleSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RoleSyntax.java"


# instance fields
.field private roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field private roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;


# virtual methods
.method public getRoleAuthorityAsString()[Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v4, v3, Lmyorg/bouncycastle/asn1/DERString;

    if-eqz v4, :cond_2

    check-cast v3, Lmyorg/bouncycastle/asn1/DERString;

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1
.end method

.method public getRoleNameAsString()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleAuthorityAsString()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
