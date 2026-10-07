.class Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$2;
.super Ljava/lang/Object;
.source "ShortcutEnableAppListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 226
    iput-object p1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$2;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    const-string v0, ""

    const-string v1, "=====divhee=====onlyUpdateAdapterNbDuibiItemStatus====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$2;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method
