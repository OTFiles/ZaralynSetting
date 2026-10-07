.class Lcom/android/settings/ForcePortraitAppLandscape$6$1;
.super Ljava/lang/Object;
.source "ForcePortraitAppLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ForcePortraitAppLandscape$6;->onUpdateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ForcePortraitAppLandscape$6;


# direct methods
.method constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ForcePortraitAppLandscape$6;

    .line 324
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$6$1;->this$1:Lcom/android/settings/ForcePortraitAppLandscape$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$6$1;->this$1:Lcom/android/settings/ForcePortraitAppLandscape$6;

    iget-object v0, v0, Lcom/android/settings/ForcePortraitAppLandscape$6;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$700(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    return-void
.end method
