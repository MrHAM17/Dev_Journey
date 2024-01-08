package com.tikpikshortvideosocialnetworking.app.modules.questionanswer.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowQuestionanswerBinding
import com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model.QuestionanswerRowModel
import kotlin.Int
import kotlin.collections.List

class QuestionAnswerAdapter(
  var list: List<QuestionanswerRowModel>
) : RecyclerView.Adapter<QuestionAnswerAdapter.RowQuestionanswerVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowQuestionanswerVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_questionanswer,parent,false)
    return RowQuestionanswerVH(view)
  }

  override fun onBindViewHolder(holder: RowQuestionanswerVH, position: Int) {
    val questionanswerRowModel = QuestionanswerRowModel()
    // TODO uncomment following line after integration with data source
    // val questionanswerRowModel = list[position]
    holder.binding.questionanswerRowModel = questionanswerRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<QuestionanswerRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: QuestionanswerRowModel
    ) {
    }
  }

  inner class RowQuestionanswerVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowQuestionanswerBinding = RowQuestionanswerBinding.bind(itemView)
  }
}
