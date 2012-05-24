.class public Lcom/android/calendar/EditResponseHelper;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mParent:Landroid/app/Activity;

.field private mWhichEvents:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    new-instance v0, Lcom/android/calendar/EditResponseHelper$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditResponseHelper$1;-><init>(Lcom/android/calendar/EditResponseHelper;)V

    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/EditResponseHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/EditResponseHelper;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public getWhichEvents()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public showDialog(I)V
    .locals 6

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v2, :cond_0

    iput-object p0, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    iget-object v4, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v5, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
