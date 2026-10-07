.class final Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "CurrentDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/CurrentDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DreamCandidateInfo"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 103
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->name:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->key:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->name:Ljava/lang/CharSequence;

    return-object v0
.end method
