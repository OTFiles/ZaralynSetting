.class public Lcom/android/settings/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "successMsg"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/android/settings/ShellUtils$CommandResult;->result:I

    .line 216
    iput-object p2, p0, Lcom/android/settings/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/android/settings/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 218
    return-void
.end method
