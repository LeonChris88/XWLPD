.class Landroid/widget/TextView$EasyEditSpanController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$EasyEditSpanController;->onTextChange(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$EasyEditSpanController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$EasyEditSpanController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$EasyEditSpanController$1;->this$1:Landroid/widget/TextView$EasyEditSpanController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController$1;->this$1:Landroid/widget/TextView$EasyEditSpanController;

    invoke-static {v0}, Landroid/widget/TextView$EasyEditSpanController;->access$1100(Landroid/widget/TextView$EasyEditSpanController;)V

    return-void
.end method
