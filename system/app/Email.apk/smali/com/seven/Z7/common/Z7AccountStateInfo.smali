.class public Lcom/seven/Z7/common/Z7AccountStateInfo;
.super Ljava/lang/Object;
.source "Z7AccountStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
    }
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7AccountStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAccountStatus:B

.field mConnectionDate:J

.field mConnectionStatus:B

.field mEndpointStatus:B

.field mIsPushOn:Z

.field mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/seven/Z7/common/Z7AccountStateInfo$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BBZBJ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/seven/Z7/common/Z7AccountStateInfo$1;

    invoke-direct {v0, p0}, Lcom/seven/Z7/common/Z7AccountStateInfo$1;-><init>(Lcom/seven/Z7/common/Z7AccountStateInfo;)V

    iput-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    iput-byte p1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mAccountStatus:B

    iput-byte p2, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mEndpointStatus:B

    iput-boolean p3, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mIsPushOn:Z

    iput-wide p5, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionDate:J

    iput-byte p4, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionStatus:B

    return-void
.end method

.method public constructor <init>(BBZBJ[Lcom/seven/Z7/common/Z7AccountStateInfo$Service;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/seven/Z7/common/Z7AccountStateInfo;-><init>(BBZBJ)V

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mAccountStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mEndpointStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mIsPushOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v2, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionDate:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mServices:Ljava/util/List;

    new-array v2, v1, [Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
