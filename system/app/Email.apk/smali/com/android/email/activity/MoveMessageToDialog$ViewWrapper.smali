.class Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewWrapper"
.end annotation


# instance fields
.field bview:Landroid/view/View;

.field targetAccount:Landroid/view/View;

.field targetAccountIcon:Landroid/widget/ImageView;

.field targetAccountName:Landroid/widget/TextView;

.field targetMailbox:Landroid/view/View;

.field targetMailboxIcon:Landroid/widget/ImageView;

.field targetMailboxName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    return-void
.end method


# virtual methods
.method getTargetAccountImageView()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f100167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTargetAccountTextView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f100166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccountName:Landroid/widget/TextView;

    return-object v0
.end method

.method getTargetAccountView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccount:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f100165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccount:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetAccount:Landroid/view/View;

    return-object v0
.end method

.method getTargetMailboxImageView()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTargetMailboxTextView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailboxName:Landroid/widget/TextView;

    return-object v0
.end method

.method getTargetMailboxView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailbox:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->bview:Landroid/view/View;

    const v1, 0x7f100168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailbox:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->targetMailbox:Landroid/view/View;

    return-object v0
.end method
