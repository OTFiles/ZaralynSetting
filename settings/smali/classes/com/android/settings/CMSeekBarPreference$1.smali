.class Lcom/android/settings/CMSeekBarPreference$1;
.super Ljava/lang/Object;
.source "CMSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CMSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CMSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/CMSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CMSeekBarPreference;

    .line 133
    iput-object p1, p0, Lcom/android/settings/CMSeekBarPreference$1;->this$0:Lcom/android/settings/CMSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference$1;->this$0:Lcom/android/settings/CMSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/CMSeekBarPreference;->access$000(Lcom/android/settings/CMSeekBarPreference;)Lcom/android/settings/CMSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference$1;->this$0:Lcom/android/settings/CMSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/CMSeekBarPreference;->access$000(Lcom/android/settings/CMSeekBarPreference;)Lcom/android/settings/CMSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/CMSeekBarPreference$Callback;->onColorManagerReset()V

    .line 139
    :cond_0
    return-void
.end method
