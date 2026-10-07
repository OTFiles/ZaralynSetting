.class Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    .line 130
    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    .line 134
    .local v0, "progress":I
    iget-object v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    .line 137
    :cond_0
    return-void
.end method
