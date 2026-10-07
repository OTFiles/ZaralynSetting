.class Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController$1;
.super Ljava/lang/Object;
.source "PortraitAppInvertedScreenPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    .line 42
    iput-object p1, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController$1;->this$0:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController$1;->this$0:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->updatePortraitApp180Roate(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 46
    return-void
.end method
