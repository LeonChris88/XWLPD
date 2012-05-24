.class public interface abstract Lmyorg/bouncycastle/asn1/smime/SMIMEAttributes;
.super Ljava/lang/Object;
.source "SMIMEAttributes.java"


# static fields
.field public static final encrypKeyPref:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final smimeCapabilities:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_smimeCapabilities:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_encrypKeyPref:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
