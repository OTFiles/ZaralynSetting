.class Lcom/android/settings/HandyGestureSettings$3;
.super Ljava/lang/Object;
.source "HandyGestureSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HandyGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HandyGestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HandyGestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/HandyGestureSettings;

    .line 191
    iput-object p1, p0, Lcom/android/settings/HandyGestureSettings$3;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 194
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_handy_cut_screen_switch_action"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void
.end method
