package com.jusplaymoviestreamingapp.app.modules.chooseplan.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowChooseplanBinding
import com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model.ChooseplanRowModel
import kotlin.Int
import kotlin.collections.List

class ChoosePlanAdapter(
  var list: List<ChooseplanRowModel>
) : RecyclerView.Adapter<ChoosePlanAdapter.RowChooseplanVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChooseplanVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_chooseplan,parent,false)
    return RowChooseplanVH(view)
  }

  override fun onBindViewHolder(holder: RowChooseplanVH, position: Int) {
    val chooseplanRowModel = ChooseplanRowModel()
    // TODO uncomment following line after integration with data source
    // val chooseplanRowModel = list[position]
    holder.binding.chooseplanRowModel = chooseplanRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChooseplanRowModel>) {
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
      item: ChooseplanRowModel
    ) {
    }
  }

  inner class RowChooseplanVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChooseplanBinding = RowChooseplanBinding.bind(itemView)
    init {
      binding.btnApply.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ChooseplanRowModel())
      }
    }
  }
}
