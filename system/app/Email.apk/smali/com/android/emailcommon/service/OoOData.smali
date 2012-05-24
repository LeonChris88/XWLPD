.class public Lcom/android/emailcommon/service/OoOData;
.super Ljava/lang/Object;
.source "OoOData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/OoOData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enabled:I

.field public end:Ljava/util/Date;

.field public msg:Ljava/lang/String;

.field public start:Ljava/util/Date;

.field public state:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/emailcommon/service/OoOData$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoOData$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/OoOData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    iput p2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    iput p3, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    iput-object p4, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    iput p2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    iput p3, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    iput-object p5, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object p6, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    iput-object p4, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/OoOData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/service/OoOData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/OoOData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1
.end method
