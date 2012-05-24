.class Lcom/android/calendar/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AlertActivity;->addListHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v1, v0}, Lcom/android/calendar/AlertActivity;->access$200(Lcom/android/calendar/AlertActivity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
