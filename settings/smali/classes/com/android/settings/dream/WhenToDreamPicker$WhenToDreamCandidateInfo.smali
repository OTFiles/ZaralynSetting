.class final Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/WhenToDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WhenToDreamCandidateInfo"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/dream/WhenToDreamPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->this$0:Lcom/android/settings/dream/WhenToDreamPicker;

    .line 100
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 102
    iput-object p2, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->name:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->key:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->name:Ljava/lang/String;

    return-object v0
.end method
