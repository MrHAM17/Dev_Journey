package com.housitbuyrentsellproperty.app.modules.addreviewfill.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowAddreviewfillBinding
import com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.model.AddreviewfillRowModel
import kotlin.Int
import kotlin.collections.List

class AddReviewFillAdapter(
  var list: List<AddreviewfillRowModel>
) : RecyclerView.Adapter<AddReviewFillAdapter.RowAddreviewfillVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAddreviewfillVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_addreviewfill,parent,false)
    return RowAddreviewfillVH(view)
  }

  override fun onBindViewHolder(holder: RowAddreviewfillVH, position: Int) {
    val addreviewfillRowModel = AddreviewfillRowModel()
    // TODO uncomment following line after integration with data source
    // val addreviewfillRowModel = list[position]
    holder.binding.addreviewfillRowModel = addreviewfillRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AddreviewfillRowModel>) {
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
      item: AddreviewfillRowModel
    ) {
    }
  }

  inner class RowAddreviewfillVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAddreviewfillBinding = RowAddreviewfillBinding.bind(itemView)
  }
}
