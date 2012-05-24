.class Lcom/sec/android/app/calculator/Calculator$4;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$4;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x1020020

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x1020022

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x1020241

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const/4 v0, 0x1

    return v0
.end method
