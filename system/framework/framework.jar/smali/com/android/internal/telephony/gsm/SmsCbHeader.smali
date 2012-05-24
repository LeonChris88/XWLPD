.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"

# interfaces
.implements Landroid/telephony/SmsCbConstants;


# static fields
.field public static final FORMAT_ETWS_PRIMARY:I = 0x3

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field public static final PDU_HEADER_LENGTH:I = 0x6

.field public static final PDU_LENGTH_ETWS:I = 0x38

.field public static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field public final dataCodingScheme:I

.field public final etwsEmergencyUserAlert:Z

.field public final etwsPopup:Z

.field public final etwsWarningType:I

.field public final format:I

.field public final geographicalScope:I

.field public final messageCode:I

.field public final messageIdentifier:I

.field public final nrOfPages:I

.field public final pageIndex:I

.field public final updateNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v7, 0x6

    if-ge v4, v7, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal PDU"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    aget-byte v4, p1, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    or-int v1, v4, v7

    array-length v4, p1

    const/16 v7, 0x38

    if-gt v4, v7, :cond_4

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    aget-byte v4, p1, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xfe

    shr-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    :goto_2
    return-void

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    array-length v4, p1

    const/16 v7, 0x58

    if-gt v4, v7, :cond_7

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xc0

    shr-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    aget-byte v4, p1, v6

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x4

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    aget-byte v4, p1, v5

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    aget-byte v4, p1, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v3, v4, 0x4

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit8 v2, v4, 0xf

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-le v3, v2, :cond_6

    :cond_5
    const/4 v3, 0x1

    const/4 v2, 0x1

    :cond_6
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    goto :goto_2

    :cond_7
    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    aget-byte v0, p1, v6

    if-eq v0, v5, :cond_8

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported message type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, p1, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xc0

    shr-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    aget-byte v4, p1, v9

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    goto/16 :goto_2
.end method

.method public static isCmasMessage(I)Z
    .locals 1

    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x112f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmergencyMessage(I)Z
    .locals 1

    const/16 v0, 0x1100

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsEmergencyUserAlert(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsMessage(I)Z
    .locals 2

    const v0, 0xfff8

    and-int/2addr v0, p0

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsPopupAlert(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageCode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
