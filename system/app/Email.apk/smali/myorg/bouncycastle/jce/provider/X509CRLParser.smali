.class public Lmyorg/bouncycastle/jce/provider/X509CRLParser;
.super Lmyorg/bouncycastle/x509/X509StreamParserSpi;
.source "X509CRLParser.java"


# static fields
.field private static final PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/X509CRLParser;->PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StreamParserSpi;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lmyorg/bouncycastle/asn1/ASN1Set;

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method
