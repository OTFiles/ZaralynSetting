.class Lcom/android/settings/ForcePortraitAppLandscape$3;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 186
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$3;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$3;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$200(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "saved_portt_app_landshow_default_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 190
    .local v0, "ichecked":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ForcePortraitAppLandscape$3;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v3}, Lcom/android/settings/ForcePortraitAppLandscape;->access$200(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "saved_portt_app_landshow_default_enable"

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    iget-object v1, p0, Lcom/android/settings/ForcePortraitAppLandscape$3;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v1}, Lcom/android/settings/ForcePortraitAppLandscape;->access$300(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 192
    return-void
.end method
