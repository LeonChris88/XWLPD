.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelectionSec()Z

    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAllSec()Z

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v1, v3}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "query"

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v3, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x10203b5 -> :sswitch_2
        0x10203b6 -> :sswitch_1
        0x10203b7 -> :sswitch_3
        0x10203b8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x1140001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v5, :cond_0

    invoke-interface {p2, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v5, :cond_1

    invoke-interface {p2, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSelection()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebView;

    return-void
.end method
