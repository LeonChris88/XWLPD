.class public Lcom/seven/Z7/common/Z7CallbackFilter;
.super Ljava/lang/Object;
.source "Z7CallbackFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7CallbackFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessageGroup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/seven/Z7/common/Z7CallbackFilter$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/Z7CallbackFilter$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/Z7CallbackFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/seven/Z7/common/Z7CallbackFilter;->mMessageGroup:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/seven/Z7/common/Z7CallbackFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/seven/Z7/common/Z7CallbackFilter;->mMessageGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
