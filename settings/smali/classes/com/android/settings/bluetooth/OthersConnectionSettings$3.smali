.class Lcom/android/settings/bluetooth/OthersConnectionSettings$3;
.super Ljava/lang/Object;
.source "OthersConnectionSettings.java"

# interfaces
.implements Lcom/android/settings/LinkifyUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/OthersConnectionSettings;->setOffMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 716
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$3;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    .line 719
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$3;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 720
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 721
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f1207c1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 723
    return-void
.end method
