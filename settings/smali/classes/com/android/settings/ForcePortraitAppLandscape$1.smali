.class Lcom/android/settings/ForcePortraitAppLandscape$1;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ForcePortraitAppLandscape;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForcePortraitAppLandscape;


# direct methods
.method constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ForcePortraitAppLandscape;

    .line 128
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$1;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 131
    const-string v0, ""

    const-string v1, "====divhee========onEditorAction====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$1;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$000(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
