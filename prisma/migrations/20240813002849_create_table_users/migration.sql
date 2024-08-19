-- CreateTable
CREATE TABLE "Users" (
    "id" UUID NOT NULL,
    "password" VARCHAR(100) NOT NULL,
    "enable" BOOLEAN NOT NULL DEFAULT true,
    "student_id" UUID NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_student_id_key" ON "Users"("student_id");

-- AddForeignKey
ALTER TABLE "Users" ADD CONSTRAINT "Users_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "students"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
