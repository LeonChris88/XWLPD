.class Lcom/sec/android/app/calculator/CToken;
.super Ljava/lang/Object;
.source "Logic.java"


# instance fields
.field private tokenId:Lcom/sec/android/app/calculator/token_type;

.field private tokenValue:D


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    iput-object v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/calculator/token_type;D)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    iput-wide p2, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    return-void
.end method


# virtual methods
.method getTokenType()Lcom/sec/android/app/calculator/token_type;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    return-object v0
.end method

.method getTokenValue()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    return-wide v0
.end method

.method setTokenType(Lcom/sec/android/app/calculator/token_type;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    return-void
.end method

.method setTokenValue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    return-void
.end method
