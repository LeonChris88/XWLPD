.class public Lcom/android/mms/ui/AlertDialogItem;
.super Ljava/lang/Object;
.source "AlertDialogItem.java"


# instance fields
.field private mTextFieldColorImage:Ljava/lang/Integer;

.field private mTextFieldColorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/AlertDialogItem;->mTextFieldColorImage:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/mms/ui/AlertDialogItem;->mTextFieldColorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/AlertDialogItem;->mTextFieldColorImage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/AlertDialogItem;->mTextFieldColorName:Ljava/lang/String;

    return-object v0
.end method
