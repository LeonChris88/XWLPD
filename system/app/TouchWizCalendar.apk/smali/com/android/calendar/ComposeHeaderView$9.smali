.class Lcom/android/calendar/ComposeHeaderView$9;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;->addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->access$1202(Lcom/android/calendar/ComposeHeaderView;I)I

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method
