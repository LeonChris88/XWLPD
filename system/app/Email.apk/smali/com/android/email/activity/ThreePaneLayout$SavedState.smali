.class Lcom/android/email/activity/ThreePaneLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/ThreePaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPaneState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState$1;

    invoke-direct {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/activity/ThreePaneLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
