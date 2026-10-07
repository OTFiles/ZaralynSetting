.class Lcom/android/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .line 869
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 4
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 872
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$700(Lcom/android/settings/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$5$1;-><init>(Lcom/android/settings/SettingsActivity$5;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 900
    return-void
.end method
