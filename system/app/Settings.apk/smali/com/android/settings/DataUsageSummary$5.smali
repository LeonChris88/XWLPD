.class Lcom/android/settings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, p2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;Z)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1
.end method
