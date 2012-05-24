.class Lcom/android/calendar/ComposeHeaderView$ToButton$2;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView$ToButton;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$000(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$200(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$300(Lcom/android/calendar/ComposeHeaderView;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->validateEmailAddress()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$002(Lcom/android/calendar/ComposeHeaderView$ToButton;Z)Z

    goto :goto_0
.end method
