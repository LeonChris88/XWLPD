.class final Lorg/apache/commons/httpclient/auth/NTLM;
.super Ljava/lang/Object;
.source "NTLM.java"


# instance fields
.field private credentialCharset:Ljava/lang/String;

.field private currentPosition:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-void
.end method
