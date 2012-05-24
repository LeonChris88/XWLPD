.class public Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;
.source "TlsProtocolHandler.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final emptybuf:[B


# instance fields
.field private SRP_A:Ljava/math/BigInteger;

.field private SRP_identity:[B

.field private SRP_password:[B

.field private Yc:Ljava/math/BigInteger;

.field private alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

.field private clientRandom:[B

.field private closed:Z

.field private connection_state:S

.field private extendedClientHello:Z

.field private failedWithError:Z

.field private handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private ms:[B

.field private pms:[B

.field private random:Ljava/security/SecureRandom;

.field private rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

.field private serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private serverRandom:[B

.field private verifyer:Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    :cond_0
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    new-array v2, v4, [B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v2, v5, v4, v5}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v3, v2, v5

    int-to-short v1, v3

    aget-byte v3, v2, v6

    int-to-short v0, v3

    if-ne v1, v4, :cond_1

    iput-boolean v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    iput-boolean v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p0, v6, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private processApplicationData()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-array v0, v3, [B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v4, v3, v4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v1, v0, v4

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v5, v6}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, v2, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v2, v1, Lmyorg/bouncycastle/crypto/tls/RecordStream;->readSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    const/16 v1, 0xb

    iput-short v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    invoke-virtual {p0, v5, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v16, p1

    if-eqz p2, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    new-instance v16, Lmyorg/bouncycastle/crypto/io/SignerInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    :cond_0
    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v14

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v12

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    if-eqz p2, :cond_1

    invoke-static/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lmyorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x2

    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v13, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v13, v0, v14}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v11, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v0, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_3

    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-lez v17, :cond_4

    :cond_3
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_4
    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_5

    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-lez v17, :cond_6

    :cond_5
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_6
    new-instance v10, Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v10, v13, v11}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v8, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v8}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    new-instance v17, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    new-instance v7, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v7}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v17, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v10}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    return-void
.end method

.method private processHandshake()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v39

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v7, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v7, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v8}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v36

    invoke-static {v8}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v39

    add-int/lit8 v40, v27, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2

    move/from16 v0, v27

    new-array v10, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    move/from16 v3, v41

    invoke-virtual {v0, v10, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    add-int/lit8 v40, v27, 0x4

    invoke-virtual/range {v39 .. v40}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    const/16 v39, 0x14

    move/from16 v0, v36

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    invoke-virtual {v0, v10, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    invoke-virtual {v0, v10, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    :cond_1
    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sparse-switch v36, :sswitch_data_0

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    :goto_0
    if-nez v31, :cond_0

    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_3
    :goto_1
    const/16 v39, 0x3

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v31, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lmyorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, v12, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v38, v39, v40

    invoke-virtual/range {v38 .. v38}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v26

    :try_start_0
    invoke-static/range {v26 .. v26}, Lmyorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v39

    if-eqz v39, :cond_4

    const/16 v39, 0x2

    const/16 v40, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    sparse-switch v39, :sswitch_data_1

    const/16 v39, 0x2

    const/16 v40, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;

    move-object/from16 v39, v0

    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/tls/Certificate;->getCerts()[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;->isValid([Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)Z

    move-result v39

    if-nez v39, :cond_3

    const/16 v39, 0x2

    const/16 v40, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_1

    :catch_0
    move-exception v16

    const/16 v39, 0x2

    const/16 v40, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_6

    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_6
    const/16 v39, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_7

    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_7
    const/16 v39, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_5

    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_1

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    :pswitch_1
    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v13, v0, [B

    const/16 v39, 0x24

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v39, v0

    const-string v40, "server finished"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    aget-byte v39, v32, v23

    aget-byte v40, v13, v23

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_8

    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_9
    const/16 v39, 0xc

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    const/16 v31, 0x1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_2

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    const/16 v39, 0x20

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v35

    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->getCipherSuite(ILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v15

    if-eqz v15, :cond_a

    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->extendedClientHello:Z

    move/from16 v39, v0

    if-eqz v39, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v20

    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v21

    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v22

    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v31, 0x1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_3

    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_c

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_c
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    const/16 v40, 0x5

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/16 v25, 0x1

    :goto_6
    const/16 v39, 0x6

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eqz v25, :cond_d

    invoke-direct/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    packed-switch v39, :pswitch_data_4

    :pswitch_5
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_7
    const/16 v39, 0x7

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v14, v0, [B

    const/16 v39, 0x0

    const/16 v40, 0x1

    aput-byte v40, v14, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    const/16 v41, 0x0

    array-length v0, v14

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v14, v2, v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    const/16 v39, 0x9

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v39, 0x30

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const-string v40, "master secret"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    move-object/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v42, v0

    invoke-virtual/range {v39 .. v42}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->init([B[B[B)V

    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v13, v0, [B

    const/16 v39, 0x24

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v39, v0

    const-string v40, "client finished"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v39, 0x14

    move/from16 v0, v39

    invoke-static {v0, v9}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    const/16 v39, 0xc

    move/from16 v0, v39

    invoke-static {v0, v9}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v9, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x16

    const/16 v41, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v29

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    const/16 v39, 0xa

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v31, 0x1

    goto/16 :goto_0

    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_6

    :pswitch_6
    const/16 v39, 0x30

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x3

    aput-byte v41, v39, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x1

    const/16 v41, 0x1

    aput-byte v41, v39, v40

    new-instance v33, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct/range {v33 .. v33}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v17, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    const/16 v39, 0x1

    new-instance v40, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v42, v0

    invoke-direct/range {v40 .. v42}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object/from16 v0, v17

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B
    :try_end_1
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    :catch_1
    move-exception v16

    const/16 v39, 0x2

    const/16 v40, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_8

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_A:Ljava/math/BigInteger;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    :sswitch_7
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_5

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_9
    const/16 v39, 0x4

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v31, 0x1

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0xa

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_f
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    packed-switch v39, :pswitch_data_6

    :pswitch_b
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_9

    :pswitch_c
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    :pswitch_d
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    :pswitch_e
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    :pswitch_f
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    :pswitch_10
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto/16 :goto_9

    :sswitch_8
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_7

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :goto_a
    const/16 v39, 0x5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v31, 0x1

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_10

    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_10
    :pswitch_12
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v37

    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    goto :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0xb -> :sswitch_0
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_6
        0x14 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p1

    if-eqz p2, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    new-instance v15, Lmyorg/bouncycastle/crypto/io/SignerInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lmyorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    :cond_0
    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v11

    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v13

    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    if-eqz p2, :cond_1

    invoke-static/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lmyorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x2

    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v6, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v6, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v10, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v10, v0, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v12, v13

    new-instance v4, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v16, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    new-instance v17, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v6, v10, v1, v2}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_identity:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_password:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_A:Ljava/math/BigInteger;

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0
.end method

.method private sendClientCertificate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0xb

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {v5, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    array-length v4, v1

    invoke-virtual {v2, v3, v1, v5, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private sendClientKeyExchange([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x10

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    return-void
.end method

.method private validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    and-int v4, v0, p2

    if-eq v4, p2, :cond_0

    const/4 v4, 0x2

    const/16 v5, 0x2e

    invoke-virtual {p0, v4, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    return-void
.end method

.method protected failWithError(SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v4

    int-to-byte v1, p2

    aput-byte v1, v0, v2

    iput-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-ne p1, v3, :cond_0

    iput-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0, v4, v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->close()V

    if-ne p1, v3, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method protected processData(S[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected readApplicationData([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x50

    const/4 v2, 0x2

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_3
    throw v0

    :cond_4
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    move v1, p3

    goto :goto_1
.end method

.method protected writeData([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x50

    const/16 v6, 0x17

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Internal TLS error, this could be an attack"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    sget-object v3, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-virtual {v2, v6, v3, v4, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    :cond_2
    const/16 v2, 0x4000

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-gtz p3, :cond_2

    return-void

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v5, v7}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v5, v7}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    :cond_4
    throw v0
.end method
